.class public Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;
.super Ljava/lang/Object;
.source "SettingsNotifyEasyModeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;
    }
.end annotation


# static fields
.field private static builder:Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;
    .locals 1

    .line 24
    sget-object v0, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;->builder:Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;

    invoke-direct {v0}, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;-><init>()V

    sput-object v0, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;->builder:Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;

    .line 27
    :cond_0
    sget-object v0, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;->builder:Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;

    return-object v0
.end method

.method private tryBuild(Landroid/content/Context;I)Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;
    .locals 1

    .line 51
    invoke-static {p1}, Lcom/android/settings/notify/SettingsNotifyHelper;->isEasyModeToNotify(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    new-instance p1, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;

    invoke-direct {p1, p0}, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;-><init>(Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;)V

    .line 53
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.xiaomi.action.ENTER_ELDERLY_MODE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1, p0}, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;->setTargetIntent(Landroid/content/Intent;)V

    .line 55
    sget p0, Lcom/android/settings/R$string;->easymode_hint:I

    invoke-virtual {p1, p0}, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;->setShownResId(I)V

    .line 56
    invoke-virtual {p1, p2}, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;->setNotifyId(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;->tryBuild(Landroid/content/Context;I)Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;

    move-result-object p0

    return-object p0
.end method
