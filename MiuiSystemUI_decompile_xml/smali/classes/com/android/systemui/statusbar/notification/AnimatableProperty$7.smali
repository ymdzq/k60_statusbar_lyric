.class public final Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;
.super Lcom/android/systemui/statusbar/notification/AnimatableProperty;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic val$animatorTag:I

.field public final synthetic val$endValueTag:I

.field public final synthetic val$property:Landroid/util/Property;

.field public final synthetic val$startValueTag:I


# direct methods
.method public constructor <init>(IIILandroid/util/Property;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$startValueTag:I

    .line 2
    iput p2, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$endValueTag:I

    .line 4
    iput p3, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$animatorTag:I

    .line 6
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$property:Landroid/util/Property;

    .line 8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final getAnimationEndTag()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$endValueTag:I

    .line 2
    return p0
    .line 4
.end method

.method public final getAnimationStartTag()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$startValueTag:I

    .line 2
    return p0
    .line 4
.end method

.method public final getAnimatorTag()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$animatorTag:I

    .line 2
    return p0
    .line 4
.end method

.method public final getProperty()Landroid/util/Property;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$property:Landroid/util/Property;

    .line 2
    return-object p0
    .line 4
.end method
