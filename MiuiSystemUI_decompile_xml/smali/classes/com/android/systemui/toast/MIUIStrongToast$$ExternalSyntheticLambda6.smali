.class public final synthetic Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/toast/MIUIStrongToast;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/MIUIStrongToast;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda6;->f$1:Landroid/graphics/Rect;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda6;->f$1:Landroid/graphics/Rect;

    .line 4
    sget v1, Lcom/android/systemui/toast/MIUIStrongToast;->$r8$clinit:I

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string v2, "containerMargin:"

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContainerMargin:I

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v2, "rect:"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 26
    move-result p0

    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo p0, "width :"

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object p0, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCutOut:Landroid/view/View;

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 41
    move-result p0

    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    const-string v0, "MIUIStrongToast"

    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
    .line 57
.end method
