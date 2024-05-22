.class public final Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public anim:Landroid/animation/ObjectAnimator;

.field public animTargetProgress:I

.field public defaultStream:Z

.field public dndIcon:Landroid/widget/FrameLayout;

.field public header:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageButton;

.field public iconMuteRes:I

.field public iconRes:I

.field public iconState:I

.field public important:Z

.field public lastAudibleLevel:I

.field public number:Landroid/widget/TextView;

.field public requestedLevel:I

.field public slider:Landroid/widget/SeekBar;

.field public sliderProgressIcon:Lcom/android/systemui/util/AlphaTintDrawableWrapper;

.field public sliderProgressSolid:Landroid/graphics/drawable/Drawable;

.field public ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

.field public stream:I

.field public tracking:Z

.field public userAttempt:J

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->requestedLevel:I

    .line 6
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    .line 9
    return-void
    .line 11
.end method
