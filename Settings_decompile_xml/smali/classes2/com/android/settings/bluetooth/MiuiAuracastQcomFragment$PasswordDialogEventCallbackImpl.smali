.class Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;
.super Ljava/lang/Object;
.source "MiuiAuracastQcomFragment.java"

# interfaces
.implements Lcom/android/settings/bluetooth/AuracastSourceUtils$PasswordDialogEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PasswordDialogEventCallbackImpl"
.end annotation


# instance fields
.field mAssist:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/bluetooth/BleBroadcastAudioScanAssistManager;",
            ">;"
        }
    .end annotation
.end field

.field mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1860
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;->mAssist:Ljava/lang/ref/WeakReference;

    .line 1861
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onNegativeButtonClicked(B)V
    .locals 2

    const-string/jumbo v0, "onNegativeButtonClicked "

    const-string v1, "MiuiAuracastQcomFragment"

    .line 1895
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;->mAssist:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "set password confirmed "

    .line 1897
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;->mAssist:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->getAllBroadcastSourceInformation()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 1899
    invoke-static {v1}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getSourceId(Ljava/lang/Object;)B

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1900
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$msendRemoveBroadcast(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V

    :cond_1
    return-void
.end method

.method public onPositiveButtonClicked(BLjava/lang/String;)V
    .locals 4

    .line 1871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPositiveButtonClicked srcId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " password = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiAuracastQcomFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;->mAssist:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "set password confirmed "

    .line 1873
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;->mAssist:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->getAllBroadcastSourceInformation()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 1876
    invoke-static {v2}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getSourceId(Ljava/lang/Object;)B

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1877
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BROADCAST_ID_AND_CODE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1878
    invoke-virtual {v2}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBroadcasterId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1877
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    const-string/jumbo p0, "onPositiveButtonClicked no Info"

    .line 1884
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p1, "AssistManager setBroadcastCode, opGroup true"

    .line 1886
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-virtual {p0, v2, p2}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->setAllBroadcastCode(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method setAssist(Landroid/bluetooth/BleBroadcastAudioScanAssistManager;)V
    .locals 1

    .line 1863
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;->mAssist:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method setFragment(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V
    .locals 1

    .line 1866
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method
