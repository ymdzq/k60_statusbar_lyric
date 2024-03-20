.class public Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;
.super Landroid/app/Activity;
.source "BatteryIndicatorStyle.java"


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEntryValues(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)[Ljava/lang/CharSequence;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResolver(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)Landroid/content/ContentResolver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createBatteryIndicatorDialog()V
    .locals 4

    .line 38
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 39
    sget v1, Lcom/android/settings/R$string;->battery_indicator_style:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 40
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "battery_indicator_style"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 42
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 43
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->mEntries:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;-><init>(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)V

    invoke-virtual {v0, v2, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 55
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$2;-><init>(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)V

    const/high16 v2, 0x1040000    # @android:string/cancel

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 62
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$3;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$3;-><init>(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 70
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 76
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->mEntryValues:[Ljava/lang/CharSequence;

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

    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d    # @android:color/transparent

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->battery_indicator_style_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->mEntries:[Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->battery_indicator_style_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->mEntryValues:[Ljava/lang/CharSequence;

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->mResolver:Landroid/content/ContentResolver;

    .line 29
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->createBatteryIndicatorDialog()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    return-void
.end method
