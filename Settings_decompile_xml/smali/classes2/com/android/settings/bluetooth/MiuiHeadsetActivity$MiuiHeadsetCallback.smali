.class Lcom/android/settings/bluetooth/MiuiHeadsetActivity$MiuiHeadsetCallback;
.super Lcom/android/bluetooth/ble/app/IMiuiHeadsetCallback$Stub;
.source "MiuiHeadsetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MiuiHeadsetCallback"
.end annotation


# instance fields
.field private activityWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/bluetooth/MiuiHeadsetActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetActivity;)V
    .locals 1

    .line 292
    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetCallback$Stub;-><init>()V

    .line 293
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$MiuiHeadsetCallback;->activityWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public refreshStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 298
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$MiuiHeadsetCallback;->activityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    if-nez p0, :cond_0

    return-void

    .line 301
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->layout_content:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    .line 302
    instance-of v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    if-eqz v0, :cond_1

    .line 303
    check-cast p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 304
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_1
    instance-of v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    if-eqz v0, :cond_2

    .line 306
    check-cast p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->refreshStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_2
    instance-of v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    if-eqz v0, :cond_3

    .line 308
    check-cast p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->refreshStatus(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
