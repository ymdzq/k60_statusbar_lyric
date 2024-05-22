.class public final synthetic Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/NavigationBarView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    check-cast p1, Landroid/graphics/Rect;

    .line 4
    sget v0, Lcom/android/systemui/navigationbar/NavigationBarView;->$r8$clinit:I

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;

    .line 11
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Ljava/lang/Object;I)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 17
    return-void
    .line 20
.end method
