.class Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveClickListener;
.super Ljava/lang/Object;
.source "MiuiAuracastQcomFragment.java"

# interfaces
.implements Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$PreferenceDetailClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoveClickListener"
.end annotation


# instance fields
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
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V
    .locals 1

    .line 1702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1701
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveClickListener;->mFragment:Ljava/lang/ref/WeakReference;

    .line 1703
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveClickListener;->mFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPreferenceDetailClickListener(Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;)V
    .locals 1

    .line 1707
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveClickListener;->mFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveClickListener;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$msendRemoveBroadcast(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V

    .line 1709
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveClickListener;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fputmNeedRemovePreference(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;)V

    .line 1710
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeClick after "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveClickListener;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiAuracastQcomFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
