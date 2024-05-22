.class public final Lcom/android/systemui/qs/brightness/RelativeSeekBarInjector;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mOffset:F

.field public final mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/RelativeToggleSeekBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/brightness/RelativeSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    .line 5
    return-void
    .line 7
.end method
