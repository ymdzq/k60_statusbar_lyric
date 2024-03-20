.class public Lcom/android/settings/fuelgauge/PowerModeSettings;
.super Landroid/app/Activity;
.source "PowerModeSettings.java"


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEntryValues(Lcom/android/settings/fuelgauge/PowerModeSettings;)[Ljava/lang/CharSequence;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createPowerModeDialog()V
    .locals 4

    .line 36
    sget v0, Lcom/android/settings/R$string;->power_mode:I

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "show_high_performance"

    const/4 v3, 0x0

    .line 38
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    sget v0, Lcom/android/settings/R$string;->high_performance_title:I

    .line 41
    :cond_0
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const-string/jumbo v0, "persist.sys.aries.power_profile"

    const-string/jumbo v2, "middle"

    .line 43
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 46
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->mEntries:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/settings/fuelgauge/PowerModeSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fuelgauge/PowerModeSettings$1;-><init>(Lcom/android/settings/fuelgauge/PowerModeSettings;)V

    invoke-virtual {v1, v2, v0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    .line 61
    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/android/settings/fuelgauge/PowerModeSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/PowerModeSettings$2;-><init>(Lcom/android/settings/fuelgauge/PowerModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 74
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->power_mode_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->mEntries:[Ljava/lang/CharSequence;

    .line 25
    sget-object p1, Landroid/provider/MiuiSettings$System;->POWER_MODE_VALUES:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->mEntryValues:[Ljava/lang/CharSequence;

    .line 26
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->createPowerModeDialog()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    return-void
.end method
