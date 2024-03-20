.class Lcom/android/settings/accounts/MiuiAccountSettings$1;
.super Ljava/lang/Object;
.source "MiuiAccountSettings.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/MiuiAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/MiuiAccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/MiuiAccountSettings;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$1;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1

    .line 201
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$1;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    invoke-static {p1}, Lcom/android/settings/accounts/MiuiAccountSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/accounts/MiuiAccountSettings;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/settings/accounts/MiuiAccountSettings$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/MiuiAccountSettings$1$1;-><init>(Lcom/android/settings/accounts/MiuiAccountSettings$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
