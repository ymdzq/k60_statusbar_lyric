.class public final Landroidx/core/view/ViewCompat$1;
.super Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    iput p2, p0, Landroidx/core/view/ViewCompat$1;->$r8$classId:I

    const/4 p2, 0x0

    .line 2
    const-class v0, Ljava/lang/Boolean;

    const/16 v1, 0x1c

    invoke-direct {p0, p1, v0, p2, v1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;-><init>(ILjava/lang/Class;II)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Class;III)V
    .locals 0

    .line 3
    iput p5, p0, Landroidx/core/view/ViewCompat$1;->$r8$classId:I

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;-><init>(ILjava/lang/Class;II)V

    return-void
.end method


# virtual methods
.method public final frameworkGet(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget p0, p0, Landroidx/core/view/ViewCompat$1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api28Impl;->isScreenReaderFocusable(Landroid/view/View;)Z

    .line 8
    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :goto_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api28Impl;->isAccessibilityHeading(Landroid/view/View;)Z

    .line 17
    move-result p0

    .line 20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method
