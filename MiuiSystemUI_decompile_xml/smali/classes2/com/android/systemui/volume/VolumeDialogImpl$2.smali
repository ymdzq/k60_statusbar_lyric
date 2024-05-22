.class public final Lcom/android/systemui/volume/VolumeDialogImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconAnimatingDeselected:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconAnimatingSelected:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 13
    return-void
    .line 16
.end method
