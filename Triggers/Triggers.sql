CREATE OR REPLACE FUNCTION cs_fee_queue_seq_cs_fee_queue()
 RETURNS trigger
 LANGUAGE edbspl
 SECURITY DEFINER
AS $function$begin
	   
  if :new.SEQ_ID is null then
  :new.SEQ_ID := TO_CHAR(SYSDATE, 'DDMONYY') || '.' || LPAD(cs_fee_queue_seq.NEXTVAL, 8, '0') ;
end if;

end$function$
;

CREATE OR REPLACE FUNCTION cs_fee_queue_seq_cs_fee_queue()
 RETURNS trigger
 LANGUAGE edbspl
 SECURITY DEFINER
AS $function$begin
	   
  if :new.SEQ_ID is null then
  :new.SEQ_ID := TO_CHAR(SYSDATE, 'DDMONYY') || '.' || LPAD(cs_fee_queue_seq.NEXTVAL, 8, '0') ;
end if;

end$function$
;

CREATE OR REPLACE FUNCTION cs_fee_temp_seq_cs_fee_temp()
 RETURNS trigger
 LANGUAGE edbspl
 SECURITY DEFINER
AS $function$begin
	   
  if :new.SEQ_ID is null then
  :new.SEQ_ID := TO_CHAR(SYSDATE, 'DDMONYY') || '.' || LPAD(cs_fee_temp_seq.NEXTVAL, 8, '0') ;
end if;

end$function$
;

CREATE OR REPLACE FUNCTION cs_fee_temp_seq_cs_fee_temp()
 RETURNS trigger
 LANGUAGE edbspl
 SECURITY DEFINER
AS $function$begin
	   
  if :new.SEQ_ID is null then
  :new.SEQ_ID := TO_CHAR(SYSDATE, 'DDMONYY') || '.' || LPAD(cs_fee_temp_seq.NEXTVAL, 8, '0') ;
end if;

end$function$
;



CREATE OR REPLACE FUNCTION trig_card_status_change_card_detail()
 RETURNS trigger
 LANGUAGE edbspl
 SECURITY DEFINER
AS $function$
    begin	   
insert
    into
    card_status_change (id,
    card_ref_number,
    old_card_status,
    new_card_status,
    reason,
    created_date)
values (seq_status.NEXTVAL,
:old.card_ref_number,
:old.status,
:new.status,
:new.reason_code,
sysdate);

END$function$
;

CREATE OR REPLACE FUNCTION trig_card_status_change_card_detail()
 RETURNS trigger
 LANGUAGE edbspl
 SECURITY DEFINER
AS $function$
    begin	   
insert
    into
    card_status_change (id,
    card_ref_number,
    old_card_status,
    new_card_status,
    reason,
    created_date)
values (seq_status.NEXTVAL,
:old.card_ref_number,
:old.status,
:new.status,
:new.reason_code,
sysdate);

END$function$
;

