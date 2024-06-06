

```mermaid
stateDiagram-v2

    Idle_Write --> Idle_Read
    Idle_Read --> Enter_Money_Read
	Enter_Money_Read --> Enter_Money_Write
	Enter_Money_Write --> Withdrawlimit_Write
	Withdrawlimit_Write --> Withdrawlimit_Idle  
	Withdrawlimit_Idle --> Enter_Code_Write
	Enter_Code_Write --> Enter_Code_Read
	Enter_Code_Read --> Enter_Code_Read
	Enter_Code_Read --> Withdraw_Options_Write
	Withdraw_Options_Write --> Withdraw_Options_Read
	Withdraw_Options_Read --> Choose_Banknote_Write
	Choose_Banknote_Write --> Choose_Banknote_Read
	Choose_Banknote_Read --> Log
	Log -->Idle_Write
	
```

