-- Simple demo schema for invoices and invoice_lines
CREATE TABLE invoices (
  invoice_id NUMBER PRIMARY KEY,
  customer_id NUMBER,
  invoice_date DATE,
  total_amount NUMBER(18,2)
);

CREATE TABLE invoice_lines (
  line_id NUMBER PRIMARY KEY,
  invoice_id NUMBER,
  item_id NUMBER,
  quantity NUMBER,
  unit_price NUMBER(18,2),
  amount NUMBER(18,2)
);
