runquery:select isnull(dev_tot, 0) total, p.businessunit title,p.businessunit slug,isnull((temp),0)temp,isnull((vib),0)vib,
    isnull((total_fol),0)foll,kuning, merah, devalarm from (select businessunit,min(bataskuning)kuning,min(batasmerah)merah, min(deviceoolalarm) devalarm ,count(*)total from _Motor group by
 businessunit) p left join
    (select businessunit,count(*)dev_tot from
    ((select motor,LinkUp,Tipe,BusinessUnit from _History_Sensor where
       (tanggal>='2024-07-11' or tanggal is null )
      group by motor,LinkUp,Tipe,BusinessUnit having sum(total_ool)>0)
      union
      (select motor,LinkUp,Tipe,BusinessUnit from _Following_Error where
       (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErrAlarm
      group by motor,LinkUp,Tipe,BusinessUnit))cp group by BusinessUnit) dv
    on p.businessunit=dv.businessunit left join
    (select businessunit,sum(total_ool)tot,isnull(sum(Temp_OOL),0)temp,isnull(sum(Vibration_OOL),0)vib from _History_Sensor where   (tanggal>='2024-07-11' or tanggal is null ) group by busi
nessunit)cp
    on p.businessunit=cp.businessunit left join (select BusinessUnit,count(*)total_fol from _Following_Error where   (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErr
Alarm group by businessunit)fe
    on p.BusinessUnit=fe.businessunit  # error:RequestError: Invalid column name 'Vibration_OOL'.
runquery:select isnull(dev_tot, 0) total, p.businessunit title,p.businessunit slug,isnull((temp),0)temp,isnull((vib),0)vib,
    isnull((total_fol),0)foll,kuning, merah, devalarm from (select businessunit,min(bataskuning)kuning,min(batasmerah)merah, min(deviceoolalarm) devalarm ,count(*)total from _Motor group by
 businessunit) p left join
    (select businessunit,count(*)dev_tot from
    ((select motor,LinkUp,Tipe,BusinessUnit from _History_Sensor where
       (tanggal>='2024-07-11' or tanggal is null )
      group by motor,LinkUp,Tipe,BusinessUnit having sum(total_ool)>0)
      union
      (select motor,LinkUp,Tipe,BusinessUnit from _Following_Error where
       (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErrAlarm
      group by motor,LinkUp,Tipe,BusinessUnit))cp group by BusinessUnit) dv
    on p.businessunit=dv.businessunit left join
    (select businessunit,sum(total_ool)tot,isnull(sum(Temp_OOL),0)temp,isnull(sum(Vibration_OOL),0)vib from _History_Sensor where   (tanggal>='2024-07-11' or tanggal is null ) group by busi
nessunit)cp
    on p.businessunit=cp.businessunit left join (select BusinessUnit,count(*)total_fol from _Following_Error where   (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErr
Alarm group by businessunit)fe
    on p.BusinessUnit=fe.businessunit  # error:RequestError: Invalid column name 'Vibration_OOL'.
runquery:select isnull(dev_tot, 0) total, p.businessunit title,p.businessunit slug,isnull((temp),0)temp,isnull((vib),0)vib,
    isnull((total_fol),0)foll,kuning, merah, devalarm from (select businessunit,min(bataskuning)kuning,min(batasmerah)merah, min(deviceoolalarm) devalarm ,count(*)total from _Motor group by
 businessunit) p left join
    (select businessunit,count(*)dev_tot from
    ((select motor,LinkUp,Tipe,BusinessUnit from _History_Sensor where
       (tanggal>='2024-07-11' or tanggal is null )
      group by motor,LinkUp,Tipe,BusinessUnit having sum(total_ool)>0)
      union
      (select motor,LinkUp,Tipe,BusinessUnit from _Following_Error where
       (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErrAlarm
      group by motor,LinkUp,Tipe,BusinessUnit))cp group by BusinessUnit) dv
    on p.businessunit=dv.businessunit left join
    (select businessunit,sum(total_ool)tot,isnull(sum(Temp_OOL),0)temp,isnull(sum(Vibration_OOL),0)vib from _History_Sensor where   (tanggal>='2024-07-11' or tanggal is null ) group by busi
nessunit)cp
    on p.businessunit=cp.businessunit left join (select BusinessUnit,count(*)total_fol from _Following_Error where   (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErr
Alarm group by businessunit)fe
    on p.BusinessUnit=fe.businessunit  # error:RequestError: Invalid column name 'Vibration_OOL'.
runquery:select isnull(dev_tot, 0) total, p.businessunit title,p.businessunit slug,isnull((temp),0)temp,isnull((vib),0)vib,
    isnull((total_fol),0)foll,kuning, merah, devalarm from (select businessunit,min(bataskuning)kuning,min(batasmerah)merah, min(deviceoolalarm) devalarm ,count(*)total from _Motor group by
 businessunit) p left join
    (select businessunit,count(*)dev_tot from
    ((select motor,LinkUp,Tipe,BusinessUnit from _History_Sensor where
       (tanggal>='2024-07-11' or tanggal is null )
      group by motor,LinkUp,Tipe,BusinessUnit having sum(total_ool)>0)
      union
      (select motor,LinkUp,Tipe,BusinessUnit from _Following_Error where
       (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErrAlarm
      group by motor,LinkUp,Tipe,BusinessUnit))cp group by BusinessUnit) dv
    on p.businessunit=dv.businessunit left join
    (select businessunit,sum(total_ool)tot,isnull(sum(Temp_OOL),0)temp,isnull(sum(Vibration_OOL),0)vib from _History_Sensor where   (tanggal>='2024-07-11' or tanggal is null ) group by busi
nessunit)cp
    on p.businessunit=cp.businessunit left join (select BusinessUnit,count(*)total_fol from _Following_Error where   (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErr
Alarm group by businessunit)fe
    on p.BusinessUnit=fe.businessunit  # error:RequestError: Invalid column name 'Vibration_OOL'.
runquery:select isnull(dev_tot, 0) total, p.businessunit title,p.businessunit slug,isnull((temp),0)temp,isnull((vib),0)vib,
    isnull((total_fol),0)foll,kuning, merah, devalarm from (select businessunit,min(bataskuning)kuning,min(batasmerah)merah, min(deviceoolalarm) devalarm ,count(*)total from _Motor group by
 businessunit) p left join
    (select businessunit,count(*)dev_tot from
    ((select motor,LinkUp,Tipe,BusinessUnit from _History_Sensor where
       (tanggal>='2024-07-11' or tanggal is null )
      group by motor,LinkUp,Tipe,BusinessUnit having sum(total_ool)>0)
      union
      (select motor,LinkUp,Tipe,BusinessUnit from _Following_Error where
       (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErrAlarm
      group by motor,LinkUp,Tipe,BusinessUnit))cp group by BusinessUnit) dv
    on p.businessunit=dv.businessunit left join
    (select businessunit,sum(total_ool)tot,isnull(sum(Temp_OOL),0)temp,isnull(sum(Vibration_OOL),0)vib from _History_Sensor where   (tanggal>='2024-07-11' or tanggal is null ) group by busi
nessunit)cp
    on p.businessunit=cp.businessunit left join (select BusinessUnit,count(*)total_fol from _Following_Error where   (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErr
Alarm group by businessunit)fe
    on p.BusinessUnit=fe.businessunit  # error:RequestError: Invalid column name 'Vibration_OOL'.
runquery:select isnull(dev_tot, 0) total, p.businessunit title,p.businessunit slug,isnull((temp),0)temp,isnull((vib),0)vib,
    isnull((total_fol),0)foll,kuning, merah, devalarm from (select businessunit,min(bataskuning)kuning,min(batasmerah)merah, min(deviceoolalarm) devalarm ,count(*)total from _Motor group by
 businessunit) p left join
    (select businessunit,count(*)dev_tot from
    ((select motor,LinkUp,Tipe,BusinessUnit from _History_Sensor where
       (tanggal>='2024-07-11' or tanggal is null )
      group by motor,LinkUp,Tipe,BusinessUnit having sum(total_ool)>0)
      union
      (select motor,LinkUp,Tipe,BusinessUnit from _Following_Error where
       (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErrAlarm
      group by motor,LinkUp,Tipe,BusinessUnit))cp group by BusinessUnit) dv
    on p.businessunit=dv.businessunit left join
    (select businessunit,sum(total_ool)tot,isnull(sum(Temp_OOL),0)temp,isnull(sum(Vibration_OOL),0)vib from _History_Sensor where   (tanggal>='2024-07-11' or tanggal is null ) group by busi
nessunit)cp
    on p.businessunit=cp.businessunit left join (select BusinessUnit,count(*)total_fol from _Following_Error where   (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErr
Alarm group by businessunit)fe
    on p.BusinessUnit=fe.businessunit  # error:RequestError: Invalid column name 'Vibration_OOL'.
runquery:select isnull(dev_tot, 0) total, p.businessunit title,p.businessunit slug,isnull((temp),0)temp,isnull((vib),0)vib,
    isnull((total_fol),0)foll,kuning, merah, devalarm from (select businessunit,min(bataskuning)kuning,min(batasmerah)merah, min(deviceoolalarm) devalarm ,count(*)total from _Motor group by
 businessunit) p left join
    (select businessunit,count(*)dev_tot from
    ((select motor,LinkUp,Tipe,BusinessUnit from _History_Sensor where
       (tanggal>='2024-07-11' or tanggal is null )
      group by motor,LinkUp,Tipe,BusinessUnit having sum(total_ool)>0)
      union
      (select motor,LinkUp,Tipe,BusinessUnit from _Following_Error where
       (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErrAlarm
      group by motor,LinkUp,Tipe,BusinessUnit))cp group by BusinessUnit) dv
    on p.businessunit=dv.businessunit left join
    (select businessunit,sum(total_ool)tot,isnull(sum(Temp_OOL),0)temp,isnull(sum(Vibration_OOL),0)vib from _History_Sensor where   (tanggal>='2024-07-11' or tanggal is null ) group by busi
nessunit)cp
    on p.businessunit=cp.businessunit left join (select BusinessUnit,count(*)total_fol from _Following_Error where   (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErr
Alarm group by businessunit)fe
    on p.BusinessUnit=fe.businessunit  # error:RequestError: Invalid column name 'Vibration_OOL'.
runquery:select isnull(dev_tot, 0) total, p.businessunit title,p.businessunit slug,isnull((temp),0)temp,isnull((vib),0)vib,
    isnull((total_fol),0)foll,kuning, merah, devalarm from (select businessunit,min(bataskuning)kuning,min(batasmerah)merah, min(deviceoolalarm) devalarm ,count(*)total from _Motor group by
 businessunit) p left join
    (select businessunit,count(*)dev_tot from
    ((select motor,LinkUp,Tipe,BusinessUnit from _History_Sensor where
       (tanggal>='2024-07-11' or tanggal is null )
      group by motor,LinkUp,Tipe,BusinessUnit having sum(total_ool)>0)
      union
      (select motor,LinkUp,Tipe,BusinessUnit from _Following_Error where
       (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErrAlarm
      group by motor,LinkUp,Tipe,BusinessUnit))cp group by BusinessUnit) dv
    on p.businessunit=dv.businessunit left join
    (select businessunit,sum(total_ool)tot,isnull(sum(Temp_OOL),0)temp,isnull(sum(Vibration_OOL),0)vib from _History_Sensor where   (tanggal>='2024-07-11' or tanggal is null ) group by busi
nessunit)cp
    on p.businessunit=cp.businessunit left join (select BusinessUnit,count(*)total_fol from _Following_Error where   (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErr
Alarm group by businessunit)fe
    on p.BusinessUnit=fe.businessunit  # error:RequestError: Invalid column name 'Vibration_OOL'.
runquery:select isnull(dev_tot, 0) total, p.businessunit title,p.businessunit slug,isnull((temp),0)temp,isnull((vib),0)vib,
    isnull((total_fol),0)foll,kuning, merah, devalarm from (select businessunit,min(bataskuning)kuning,min(batasmerah)merah, min(deviceoolalarm) devalarm ,count(*)total from _Motor group by
 businessunit) p left join
    (select businessunit,count(*)dev_tot from
    ((select motor,LinkUp,Tipe,BusinessUnit from _History_Sensor where
       (tanggal>='2024-07-11' or tanggal is null )
      group by motor,LinkUp,Tipe,BusinessUnit having sum(total_ool)>0)
      union
      (select motor,LinkUp,Tipe,BusinessUnit from _Following_Error where
       (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErrAlarm
      group by motor,LinkUp,Tipe,BusinessUnit))cp group by BusinessUnit) dv
    on p.businessunit=dv.businessunit left join
    (select businessunit,sum(total_ool)tot,isnull(sum(Temp_OOL),0)temp,isnull(sum(Vibration_OOL),0)vib from _History_Sensor where   (tanggal>='2024-07-11' or tanggal is null ) group by busi
nessunit)cp
    on p.businessunit=cp.businessunit left join (select BusinessUnit,count(*)total_fol from _Following_Error where   (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErr
Alarm group by businessunit)fe
    on p.BusinessUnit=fe.businessunit  # error:RequestError: Invalid column name 'Vibration_OOL'.
runquery:select isnull(dev_tot, 0) total, p.businessunit title,p.businessunit slug,isnull((temp),0)temp,isnull((vib),0)vib,
    isnull((total_fol),0)foll,kuning, merah, devalarm from (select businessunit,min(bataskuning)kuning,min(batasmerah)merah, min(deviceoolalarm) devalarm ,count(*)total from _Motor group by
 businessunit) p left join
    (select businessunit,count(*)dev_tot from
    ((select motor,LinkUp,Tipe,BusinessUnit from _History_Sensor where
       (tanggal>='2024-07-11' or tanggal is null )
      group by motor,LinkUp,Tipe,BusinessUnit having sum(total_ool)>0)
      union
      (select motor,LinkUp,Tipe,BusinessUnit from _Following_Error where
       (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErrAlarm
      group by motor,LinkUp,Tipe,BusinessUnit))cp group by BusinessUnit) dv
    on p.businessunit=dv.businessunit left join
    (select businessunit,sum(total_ool)tot,isnull(sum(Temp_OOL),0)temp,isnull(sum(Vibration_OOL),0)vib from _History_Sensor where   (tanggal>='2024-07-11' or tanggal is null ) group by busi
nessunit)cp
    on p.businessunit=cp.businessunit left join (select BusinessUnit,count(*)total_fol from _Following_Error where   (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErr
Alarm group by businessunit)fe
    on p.BusinessUnit=fe.businessunit  # error:RequestError: Invalid column name 'Vibration_OOL'.
runquery:select isnull(dev_tot, 0) total, p.businessunit title,p.businessunit slug,isnull((temp),0)temp,isnull((vib),0)vib,
    isnull((total_fol),0)foll,kuning, merah, devalarm from (select businessunit,min(bataskuning)kuning,min(batasmerah)merah, min(deviceoolalarm) devalarm ,count(*)total from _Motor group by
 businessunit) p left join
    (select businessunit,count(*)dev_tot from
    ((select motor,LinkUp,Tipe,BusinessUnit from _History_Sensor where
       (tanggal>='2024-07-11' or tanggal is null )
      group by motor,LinkUp,Tipe,BusinessUnit having sum(total_ool)>0)
      union
      (select motor,LinkUp,Tipe,BusinessUnit from _Following_Error where
       (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErrAlarm
      group by motor,LinkUp,Tipe,BusinessUnit))cp group by BusinessUnit) dv
    on p.businessunit=dv.businessunit left join
    (select businessunit,sum(total_ool)tot,isnull(sum(Temp_OOL),0)temp,isnull(sum(Vibration_OOL),0)vib from _History_Sensor where   (tanggal>='2024-07-11' or tanggal is null ) group by busi
nessunit)cp
    on p.businessunit=cp.businessunit left join (select BusinessUnit,count(*)total_fol from _Following_Error where   (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErr
Alarm group by businessunit)fe
    on p.BusinessUnit=fe.businessunit  # error:RequestError: Invalid column name 'Vibration_OOL'.
runquery:select isnull(dev_tot, 0) total, p.businessunit title,p.businessunit slug,isnull((temp),0)temp,isnull((vib),0)vib,
    isnull((total_fol),0)foll,kuning, merah, devalarm from (select businessunit,min(bataskuning)kuning,min(batasmerah)merah, min(deviceoolalarm) devalarm ,count(*)total from _Motor group by
 businessunit) p left join
    (select businessunit,count(*)dev_tot from
    ((select motor,LinkUp,Tipe,BusinessUnit from _History_Sensor where
       (tanggal>='2024-07-11' or tanggal is null )
      group by motor,LinkUp,Tipe,BusinessUnit having sum(total_ool)>0)
      union
      (select motor,LinkUp,Tipe,BusinessUnit from _Following_Error where
       (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErrAlarm
      group by motor,LinkUp,Tipe,BusinessUnit))cp group by BusinessUnit) dv
    on p.businessunit=dv.businessunit left join
    (select businessunit,sum(total_ool)tot,isnull(sum(Temp_OOL),0)temp,isnull(sum(Vibration_OOL),0)vib from _History_Sensor where   (tanggal>='2024-07-11' or tanggal is null ) group by busi
nessunit)cp
    on p.businessunit=cp.businessunit left join (select BusinessUnit,count(*)total_fol from _Following_Error where   (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErr
Alarm group by businessunit)fe
    on p.BusinessUnit=fe.businessunit  # error:RequestError: Invalid column name 'Vibration_OOL'.
runquery:select isnull(dev_tot, 0) total, p.businessunit title,p.businessunit slug,isnull((temp),0)temp,isnull((vib),0)vib,
    isnull((total_fol),0)foll,kuning, merah, devalarm from (select businessunit,min(bataskuning)kuning,min(batasmerah)merah, min(deviceoolalarm) devalarm ,count(*)total from _Motor group by
 businessunit) p left join
    (select businessunit,count(*)dev_tot from
    ((select motor,LinkUp,Tipe,BusinessUnit from _History_Sensor where
       (tanggal>='2024-07-11' or tanggal is null )
      group by motor,LinkUp,Tipe,BusinessUnit having sum(total_ool)>0)
      union
      (select motor,LinkUp,Tipe,BusinessUnit from _Following_Error where
       (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErrAlarm
      group by motor,LinkUp,Tipe,BusinessUnit))cp group by BusinessUnit) dv
    on p.businessunit=dv.businessunit left join
    (select businessunit,sum(total_ool)tot,isnull(sum(Temp_OOL),0)temp,isnull(sum(Vibration_OOL),0)vib from _History_Sensor where   (tanggal>='2024-07-11' or tanggal is null ) group by busi
nessunit)cp
    on p.businessunit=cp.businessunit left join (select BusinessUnit,count(*)total_fol from _Following_Error where   (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErr
Alarm group by businessunit)fe
    on p.BusinessUnit=fe.businessunit  # error:RequestError: Invalid column name 'Vibration_OOL'.
runquery:select isnull(dev_tot, 0) total, p.businessunit title,p.businessunit slug,isnull((temp),0)temp,isnull((vib),0)vib,
    isnull((total_fol),0)foll,kuning, merah, devalarm from (select businessunit,min(bataskuning)kuning,min(batasmerah)merah, min(deviceoolalarm) devalarm ,count(*)total from _Motor group by
 businessunit) p left join
    (select businessunit,count(*)dev_tot from
    ((select motor,LinkUp,Tipe,BusinessUnit from _History_Sensor where
       (tanggal>='2024-07-11' or tanggal is null )
      group by motor,LinkUp,Tipe,BusinessUnit having sum(total_ool)>0)
      union
      (select motor,LinkUp,Tipe,BusinessUnit from _Following_Error where
       (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErrAlarm
      group by motor,LinkUp,Tipe,BusinessUnit))cp group by BusinessUnit) dv
    on p.businessunit=dv.businessunit left join
    (select businessunit,sum(total_ool)tot,isnull(sum(Temp_OOL),0)temp,isnull(sum(Vibration_OOL),0)vib from _History_Sensor where   (tanggal>='2024-07-11' or tanggal is null ) group by busi
nessunit)cp
    on p.businessunit=cp.businessunit left join (select BusinessUnit,count(*)total_fol from _Following_Error where   (tanggal>='2024-07-11' or tanggal is null ) AND FollowingError >= FolErr
Alarm group by businessunit)fe
    on p.BusinessUnit=fe.businessunit  # error:RequestError: Invalid column name 'Vibration_OOL'.
