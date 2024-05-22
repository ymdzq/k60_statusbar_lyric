.class public final synthetic Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardEditorHelper;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardEditorHelper;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    .line 4
    iget-object v1, v0, Lcom/android/keyguard/KeyguardEditorHelper;->serviceConnection:Lcom/android/keyguard/KeyguardEditorHelper$10;

    .line 6
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 8
    iget-object v3, v0, Lcom/android/keyguard/KeyguardEditorHelper;->mContext:Landroid/content/Context;

    .line 10
    const/4 v4, 0x1

    .line 12
    invoke-virtual {v3, p0, v1, v4, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 13
    move-result p0

    .line 16
    iput-boolean p0, v0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditorServiceBinded:Z

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "is service retry connected: "

    .line 21
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditorServiceBinded:Z

    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 35
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-boolean p0, v0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditorServiceBinded:Z

    .line 40
    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardEditorHelper;->sendServiceConnectedTimeoutMessage()V

    .line 44
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardEditorHelper;->checkIfStartEditActivity()V

    .line 47
    goto :goto_0

    .line 50
    :cond_0
    sget-object p0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->IDEL:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 51
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardEditorHelper;->setEditorState(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;)V

    .line 53
    :goto_0
    return-void
    .line 56
.end method
