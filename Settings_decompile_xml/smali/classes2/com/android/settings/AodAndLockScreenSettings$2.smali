.class Lcom/android/settings/AodAndLockScreenSettings$2;
.super Landroid/database/ContentObserver;
.source "AodAndLockScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AodAndLockScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AodAndLockScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AodAndLockScreenSettings;Landroid/os/Handler;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings$2;->this$0:Lcom/android/settings/AodAndLockScreenSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 795
    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings$2;->this$0:Lcom/android/settings/AodAndLockScreenSettings;

    invoke-static {p0}, Lcom/android/settings/AodAndLockScreenSettings;->-$$Nest$mupdateAodState(Lcom/android/settings/AodAndLockScreenSettings;)V

    return-void
.end method
