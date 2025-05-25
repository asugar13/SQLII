from datetime import datetime, timedelta
import os
import random
import math

PRODUCTS = [
    {"id": 0, "price": 2.99},
    {"id": 1, "price": 3.99},
    {"id": 2, "price": 3.49},
    {"id": 3, "price": 4.99},
    {"id": 4, "price": 3.49},
    {"id": 5, "price": 3.49},
    {"id": 6, "price": 2.99},
    {"id": 7, "price": 3.99},
    {"id": 8, "price": 3.49},
]

USERS = [
    {"id": 1,  "address_id": 0,  "cc_num_seq": 238},
    {"id": 2,  "address_id": 1,  "cc_num_seq": 943},
    {"id": 3,  "address_id": 2,  "cc_num_seq": 314},
    {"id": 4,  "address_id": 3,  "cc_num_seq": 434},
    {"id": 5,  "address_id": 4,  "cc_num_seq": 321},
    {"id": 6,  "address_id": 5,  "cc_num_seq": 654},
    {"id": 7,  "address_id": 6,  "cc_num_seq": 987},
    {"id": 8,  "address_id": 7,  "cc_num_seq": 123},
    {"id": 9,  "address_id": 8,  "cc_num_seq": 456},
    {"id": 10, "address_id": 9,  "cc_num_seq": 246},
    {"id": 11, "address_id": 10, "cc_num_seq": 579},
    {"id": 12, "address_id": 11, "cc_num_seq": 864},
    {"id": 13, "address_id": 12, "cc_num_seq": 753},
    {"id": 14, "address_id": 13, "cc_num_seq": 159},
    {"id": 15, "address_id": 14, "cc_num_seq": 852},
    {"id": 16, "address_id": 15, "cc_num_seq": 357},
    {"id": 17, "address_id": 16, "cc_num_seq": 951},
    {"id": 18, "address_id": 17, "cc_num_seq": 258},
    {"id": 19, "address_id": 18, "cc_num_seq": 654},
]


def truncate5(x: float) -> float:
    """
    Truncate a float to 5 decimal places without rounding.
    """
    return math.floor(x * 1e5) / 1e5


def mock_product_sale(
    product: dict[int, float],
    quantity: int,
    date: datetime,
    user: dict[int, int],
    cart_id: int,
    cc_payment_id: int,
    ticket_id: int
):
    product_id = product["id"]
    price = product["price"]
    user_id = user["id"]
    address_id = user["address_id"]
    cc_num_seq = user["cc_num_seq"]

    date = date.strftime('%Y-%m-%d')

    # Compute total and truncate
    raw_total = price * quantity
    total_price = truncate5(raw_total)

    # Create a shopping cart
    cart_sql = f"""
        INSERT INTO shopping_cart (cart_id, user_id, shopping_date, is_paid, is_cancelled)
        VALUES ({cart_id}, {user_id}, '{date}', 1, 0);
    """

    # Create a shopping cart item
    cart_item_sql = f"""
       INSERT INTO `mydb`.shopping_cart_items (cart_id, num_seq, product_id, quantity)
       VALUES ({cart_id}, {cart_id}, {product_id}, {quantity});
    """

    # Create a cc_payment
    cc_payment_sql = f"""
        INSERT INTO `mydb`.ccpayment (
            CCPAYMENT_ID, CCPAYTRAN_ID, CURRENCY_ID, EXPECTED_AMOUNT, APPROVING_AMOUNT, APPROVED_AMOUNT,
            CCPAYMENT_STATE, TIMECREATED, user_id, cc_num_seq
        ) VALUES
        (
            {cc_payment_id}, NULL, 'USD', {total_price:.5f}, {total_price:.5f}, {total_price:.5f},
            '2', '{date}', {user_id}, {cc_num_seq}
        );
    """

    # Create a ticket
    ticket_sql = f"""
        INSERT INTO `mydb`.ticket (
            TICKET_ID, TIMEPLACED, TOTAL_PRODUCT, TOTAL_TAX, TOTAL_ORDER, CURRENCY_ID,
            PAYMENT_ID, user_id, cart_id
        ) VALUES
        (
            {ticket_id}, '{date}', {total_price:.5f}, 0.00000, {total_price:.5f}, 'USD',
            {cc_payment_id}, {user_id}, {cart_id}
        );
    """

    # Create a ticket item
    ticket_item_sql = f"""
        INSERT INTO `mydb`.ticket_item (
            TICKET_ID, NUMSEQ, PRODUCT_ID, DESCRIPTION,
            QUANTITY, CURRENCY, PRICE, TAX_AMOUNT, PRODUCT_AMOUNT
        ) VALUES
        (
            {ticket_id}, {ticket_id}, {product_id}, 'Auto-generated',
            {quantity}, 'USD', {truncate5(price):.5f}, 0.00000, {total_price:.5f}
        );
    """

    # 99% chance of delivery
    is_delivered = 1 if random.random() < 0.99 else 0

    # Create an item delivery
    item_delivery_sql = f"""
        INSERT INTO `mydb`.items_delivery (ticket_id, delivery_date, address_id, is_delivered) VALUES
        (
            {ticket_id}, '{date}', {address_id}, {is_delivered}
        );
    """

    result = f"""
        ----- SALE NUMBER: {ticket_id} -----
        {cart_sql}

        {cart_item_sql}

        {cc_payment_sql}

        {ticket_sql}

        {ticket_item_sql}

        {item_delivery_sql}
    """

    return result


def main():
    today = datetime.now()
    current_date = today - timedelta(days=365)

    result = ""
    index = 1
    while current_date < today:
        result += mock_product_sale(
            product=random.choice(PRODUCTS),
            quantity=random.randint(1, 50),
            date=current_date,
            user=random.choice(USERS),
            cart_id=index,
            cc_payment_id=index,
            ticket_id=index
        )
        current_date += timedelta(days=1)
        index += 1

    file_name = "mock-sales-data.sql"

    # Fix formatting
    result = result.replace("        ", "")
    result = result.replace("       ", "")

    # check if the file exists
    if os.path.exists(file_name):
        os.remove(file_name)

    # write the result
    with open(file_name, "w") as f:
        f.write(result)
        f.close()


if __name__ == "__main__":
    main()
