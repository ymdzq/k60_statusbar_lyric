.class public final Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubblesForUserWithParent$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $userId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubblesForUserWithParent$1;->$userId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    .line 2
    iget p0, p0, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubblesForUserWithParent$1;->$userId:I

    .line 4
    iget p1, p1, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    .line 6
    if-ne p1, p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method
