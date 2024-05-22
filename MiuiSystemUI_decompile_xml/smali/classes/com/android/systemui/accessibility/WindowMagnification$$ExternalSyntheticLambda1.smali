.class public final synthetic Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/WindowMagnification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/WindowMagnification;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticLambda3;

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;II)V

    .line 10
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mHandler:Landroid/os/Handler;

    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
    .line 18
.end method
