.class Lcom/android/settings/security/ScreenPinningSettings$1;
.super Landroid/database/ContentObserver;
.source "ScreenPinningSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/ScreenPinningSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/ScreenPinningSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/security/ScreenPinningSettings;Landroid/os/Handler;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/settings/security/ScreenPinningSettings$1;->this$0:Lcom/android/settings/security/ScreenPinningSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 122
    iget-object p0, p0, Lcom/android/settings/security/ScreenPinningSettings$1;->this$0:Lcom/android/settings/security/ScreenPinningSettings;

    invoke-static {p0}, Lcom/android/settings/security/ScreenPinningSettings;->-$$Nest$mrefreshPreferenceState(Lcom/android/settings/security/ScreenPinningSettings;)V

    return-void
.end method
