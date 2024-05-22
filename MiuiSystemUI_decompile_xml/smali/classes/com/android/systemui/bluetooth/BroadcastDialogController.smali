.class public final Lcom/android/systemui/bluetooth/BroadcastDialogController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final mContext:Landroid/content/Context;

.field public final mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field public final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/broadcast/BroadcastSender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 15
    return-void
    .line 17
.end method
