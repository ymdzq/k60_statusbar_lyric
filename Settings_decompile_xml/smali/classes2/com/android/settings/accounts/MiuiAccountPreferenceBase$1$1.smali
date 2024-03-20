.class Lcom/android/settings/accounts/MiuiAccountPreferenceBase$1$1;
.super Ljava/lang/Object;
.source "MiuiAccountPreferenceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/MiuiAccountPreferenceBase$1;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/accounts/MiuiAccountPreferenceBase$1;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/MiuiAccountPreferenceBase$1;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase$1$1;->this$1:Lcom/android/settings/accounts/MiuiAccountPreferenceBase$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase$1$1;->this$1:Lcom/android/settings/accounts/MiuiAccountPreferenceBase$1;

    iget-object p0, p0, Lcom/android/settings/accounts/MiuiAccountPreferenceBase$1;->this$0:Lcom/android/settings/accounts/MiuiAccountPreferenceBase;

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiAccountPreferenceBase;->onSyncStateUpdated()V

    return-void
.end method
