begin
    <<dis_dongu>>
    for v_dis_sayac in 1..2 loop
        <<ic_dongu>>
        for v_ic_sayac in 1..4 loop
            dbms_output.put_line('DI� D�NG�: '|| v_dis_sayac || ', �� D�ng� : ' || v_ic_sayac);
            exit dis_dongu when v_ic_sayac = 3;
        end loop ic_dongu;
    end loop dis_dongu;
end;