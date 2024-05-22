.class public final Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$MenuPositionProperty;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mProperty:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$MenuPositionProperty;->mProperty:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/accessibility/floatingmenu/MenuView;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$MenuPositionProperty;->mProperty:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/accessibility/floatingmenu/MenuView;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$MenuPositionProperty;->mProperty:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 4
    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    .line 6
    return-void
    .line 9
.end method
