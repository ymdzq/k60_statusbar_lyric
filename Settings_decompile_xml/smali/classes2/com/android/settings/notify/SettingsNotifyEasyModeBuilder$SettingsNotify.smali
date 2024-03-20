.class public Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;
.super Ljava/lang/Object;
.source "SettingsNotifyEasyModeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsNotify"
.end annotation


# instance fields
.field notifyId:I

.field shownResId:I

.field targetIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;


# direct methods
.method public constructor <init>(Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;->this$0:Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goToTarget(Landroid/app/Activity;)V
    .locals 3

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;->targetIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;->targetIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setNotifyId(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;->notifyId:I

    return-void
.end method

.method public setShownResId(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;->shownResId:I

    return-void
.end method

.method public setTargetIntent(Landroid/content/Intent;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;->targetIntent:Landroid/content/Intent;

    return-void
.end method
