.class public final Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/GestureStubView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/GestureStubView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 2
    sget-boolean p1, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp:Z

    .line 4
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/fsgesture/GestureStubView;->adaptRotation(Z)V

    .line 7
    return-void
    .line 10
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
