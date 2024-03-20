.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 4
    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;->f$1:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleData;

    .line 10
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;->f$1:I

    .line 12
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(ILjava/lang/String;)V

    .line 21
    return-void

    .line 24
    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 25
    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleData;

    .line 27
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;->f$1:I

    .line 29
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(ILjava/lang/String;)V

    .line 38
    return-void

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 42
    check-cast v0, Ljava/util/ArrayList;

    .line 44
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;->f$1:I

    .line 46
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v1

    .line 53
    if-ge v1, p0, :cond_0

    .line 54
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 60
.end method
