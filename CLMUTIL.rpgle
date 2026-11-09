**free
// CLMUTIL - Date helpers shared by the claim programs.
// Built-in extension: ingested with or without the organization config.
ctl-opt nomain;

dcl-proc DaysBetween export;
  dcl-pi *n int(10);
    fromDate date const;
    toDate date const;
  end-pi;

  return %diff(toDate : fromDate : *days);
end-proc;

dcl-proc IsWithinWindow export;
  dcl-pi *n ind;
    checkDate date const;
    windowDays int(10) const;
  end-pi;

  return checkDate >= %date() and checkDate <= %date() + %days(windowDays);
end-proc;
