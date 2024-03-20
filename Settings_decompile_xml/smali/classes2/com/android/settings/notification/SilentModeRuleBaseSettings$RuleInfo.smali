.class public Lcom/android/settings/notification/SilentModeRuleBaseSettings$RuleInfo;
.super Ljava/lang/Object;
.source "SilentModeRuleBaseSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SilentModeRuleBaseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RuleInfo"
.end annotation


# instance fields
.field public defaultConditionId:Landroid/net/Uri;

.field public serviceComponent:Landroid/content/ComponentName;

.field public settingsAction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
