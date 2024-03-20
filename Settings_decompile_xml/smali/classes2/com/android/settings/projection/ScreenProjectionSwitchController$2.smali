.class Lcom/android/settings/projection/ScreenProjectionSwitchController$2;
.super Landroid/database/ContentObserver;
.source "ScreenProjectionSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/projection/ScreenProjectionSwitchController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/projection/ScreenProjectionSwitchController;


# direct methods
.method constructor <init>(Lcom/android/settings/projection/ScreenProjectionSwitchController;Landroid/os/Handler;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController$2;->this$0:Lcom/android/settings/projection/ScreenProjectionSwitchController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 90
    iget-object p0, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController$2;->this$0:Lcom/android/settings/projection/ScreenProjectionSwitchController;

    invoke-static {p0}, Lcom/android/settings/projection/ScreenProjectionSwitchController;->-$$Nest$mupdateSwitchState(Lcom/android/settings/projection/ScreenProjectionSwitchController;)V

    return-void
.end method
