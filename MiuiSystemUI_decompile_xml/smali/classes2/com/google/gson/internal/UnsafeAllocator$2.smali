.class public final Lcom/google/gson/internal/UnsafeAllocator$2;
.super Lcom/google/gson/internal/UnsafeAllocator;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic val$constructorId:I

.field public final synthetic val$newInstance:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(ILjava/lang/reflect/Method;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/gson/internal/UnsafeAllocator$2;->val$newInstance:Ljava/lang/reflect/Method;

    .line 2
    iput p1, p0, Lcom/google/gson/internal/UnsafeAllocator$2;->val$constructorId:I

    .line 4
    invoke-direct {p0}, Lcom/google/gson/internal/UnsafeAllocator;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/gson/internal/UnsafeAllocator;->-$$Nest$smassertInstantiable(Ljava/lang/Class;)V

    .line 2
    iget v0, p0, Lcom/google/gson/internal/UnsafeAllocator$2;->val$constructorId:I

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v0

    .line 10
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 14
    iget-object p0, p0, Lcom/google/gson/internal/UnsafeAllocator$2;->val$newInstance:Ljava/lang/reflect/Method;

    .line 15
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    return-object p0
    .line 22
.end method
