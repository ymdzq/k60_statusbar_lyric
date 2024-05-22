.class public final Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$1;->this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;

    .line 2
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$1;->this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;

    .line 4
    iget p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mScale:F

    .line 6
    return p0
    .line 8
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$1;->this$0:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;

    .line 4
    iput p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mScale:F

    .line 6
    return-void
    .line 8
.end method
