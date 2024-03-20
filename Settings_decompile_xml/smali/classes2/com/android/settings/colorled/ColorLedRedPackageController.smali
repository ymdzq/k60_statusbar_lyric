.class public Lcom/android/settings/colorled/ColorLedRedPackageController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ColorLedRedPackageController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/colorled/IVisibleListener;


# static fields
.field private static final URI_LUCKY:Landroid/net/Uri;


# instance fields
.field private mPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/colorled/ColorLedRedPackageController;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/colorled/ColorLedRedPackageController;->mPreference:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetBreathLuckyEnable(Lcom/android/settings/colorled/ColorLedRedPackageController;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/colorled/ColorLedRedPackageController;->setBreathLuckyEnable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLuckyEnable(Lcom/android/settings/colorled/ColorLedRedPackageController;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/colorled/ColorLedRedPackageController;->setLuckyEnable(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.miui.luckymoney.provider/lmEnable"

    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/colorled/ColorLedRedPackageController;->URI_LUCKY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getBreathLuckyEnable()Z
    .locals 3

    .line 85
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "breath_lucky_enable"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method private getLuckyEnable()Z
    .locals 7

    const/4 v0, 0x0

    .line 97
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/colorled/ColorLedRedPackageController;->URI_LUCKY:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "enable"

    .line 99
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    .line 101
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 102
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return p0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_2
    throw p0
.end method

.method private setBreathLuckyEnable(Z)V
    .locals 2

    .line 90
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "breath_lucky_enable"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private setLuckyEnable(Z)V
    .locals 2

    .line 115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "enable"

    .line 116
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 117
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/settings/colorled/ColorLedRedPackageController;->URI_LUCKY:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private showDialog()V
    .locals 3

    .line 121
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    sget v1, Lcom/android/settings/R$string;->color_led_lucky_dialog_title:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 123
    sget v1, Lcom/android/settings/R$string;->color_led_lucky_dialog_message:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 124
    sget v1, Lcom/android/settings/R$string;->screen_cancel:I

    new-instance v2, Lcom/android/settings/colorled/ColorLedRedPackageController$1;

    invoke-direct {v2, p0}, Lcom/android/settings/colorled/ColorLedRedPackageController$1;-><init>(Lcom/android/settings/colorled/ColorLedRedPackageController;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 131
    sget v1, Lcom/android/settings/R$string;->screen_confirm:I

    new-instance v2, Lcom/android/settings/colorled/ColorLedRedPackageController$2;

    invoke-direct {v2, p0}, Lcom/android/settings/colorled/ColorLedRedPackageController$2;-><init>(Lcom/android/settings/colorled/ColorLedRedPackageController;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 138
    new-instance v1, Lcom/android/settings/colorled/ColorLedRedPackageController$3;

    invoke-direct {v1, p0}, Lcom/android/settings/colorled/ColorLedRedPackageController$3;-><init>(Lcom/android/settings/colorled/ColorLedRedPackageController;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "color_led_red_package"

    .line 53
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/colorled/ColorLedRedPackageController;->mPreference:Landroidx/preference/SwitchPreference;

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/colorled/ColorLedRedPackageController;->getBreathLuckyEnable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public ensureVisible(Z)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/settings/colorled/ColorLedRedPackageController;->mPreference:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "color_led_red_package"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 42
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 62
    invoke-virtual {p1}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "color_led_red_package"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 63
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/android/settings/colorled/ColorLedRedPackageController;->getLuckyEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    invoke-direct {p0, p2}, Lcom/android/settings/colorled/ColorLedRedPackageController;->setBreathLuckyEnable(Z)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/colorled/ColorLedRedPackageController;->showDialog()V

    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/colorled/ColorLedRedPackageController;->setBreathLuckyEnable(Z)V

    :goto_0
    return p2

    :cond_2
    return v1
.end method
