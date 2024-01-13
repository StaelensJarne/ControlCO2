data = JSON.parse(value)
if (data.ActiveEnterTimestamp > data.ActiveExitTimestamp) {
    return Math.floor(Date.now()/1000)-Number(data.ActiveEnterTimestamp)/1000000;
}
return null;