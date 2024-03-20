.class Lcom/android/settings/accounts/MiuiAccountPreferenceBase$1;
.super Ljava/lang/Object;
.source "MiuiAccountPreferenceBase.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/MiuiAccountPreferenceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/MiuiAccountPreferenceBase;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/MiuiAccountPreferenceBase;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase$1;->this$0:Lcom/android/settings/accounts/MiuiAccountPreferenceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1

    .line 128
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase$1;->this$0:Lcom/android/settings/accounts/MiuiAccountPreferenceBase;

    invoke-static {p1}, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->-$$Nest$fgetmHandler(Lcom/android/settings/accounts/MiuiAccountPreferenceBase;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/MiuiAccountPreferenceBase$1$1;-><init>(Lcom/android/settings/accounts/MiuiAccountPreferenceBase$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
