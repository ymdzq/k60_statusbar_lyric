.class public Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;
.super Ljava/lang/Object;
.source "SilentModeSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SilentModeSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ZenRuleInfo"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field rule:Landroid/service/notification/ZenModeConfig$ZenRule;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
