.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Ljava/lang/String;

    .line 10
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 12
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    .line 14
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p0

    .line 19
    return p0

    .line 20
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 21
    check-cast p0, Ljava/lang/String;

    .line 23
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 25
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p0

    .line 32
    return p0

    .line 33
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 34
    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleData;

    .line 36
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 38
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 40
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/Bubble;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p0

    .line 45
    xor-int/lit8 p0, p0, 0x1

    .line 46
    return p0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 50
.end method
