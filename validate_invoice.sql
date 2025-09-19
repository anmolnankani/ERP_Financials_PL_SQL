CREATE OR REPLACE PROCEDURE validate_invoice(p_invoice_id IN NUMBER) AS
  v_sum NUMBER(18,2);
  v_total NUMBER(18,2);
BEGIN
  SELECT NVL(SUM(amount),0) INTO v_sum FROM invoice_lines WHERE invoice_id = p_invoice_id;
  SELECT total_amount INTO v_total FROM invoices WHERE invoice_id = p_invoice_id;
  IF v_sum <> v_total THEN
    RAISE_APPLICATION_ERROR(-20001, 'Invoice total does not match invoice lines total.');
  END IF;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20002, 'Invoice not found.');
END validate_invoice;
/
