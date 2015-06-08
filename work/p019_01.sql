UPDATE SomeTable
  SET p_key = CASE p_key
                WHEN 'a' THEN 'b'
                WHEN 'b' THEN 'a'
                ELSE p_key
              END;
