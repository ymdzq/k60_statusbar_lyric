.class public final Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1$listener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $connectedDevices:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1$listener$1;->$connectedDevices:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1$listener$1;->this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1$listener$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onInputDeviceAdded(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1$listener$1;->$connectedDevices:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    check-cast v1, Ljava/util/Set;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 11
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 14
    move-result v4

    .line 17
    add-int/lit8 v4, v4, 0x1

    .line 18
    invoke-static {v4}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 20
    move-result v4

    .line 23
    invoke-direct {v3, v4}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 24
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 27
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 30
    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1$listener$1;->this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;

    .line 35
    iget-object v1, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1$listener$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 37
    iget-object p0, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1$listener$1;->$connectedDevices:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 39
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 41
    new-instance v2, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$DeviceAdded;

    .line 43
    invoke-direct {v2, p1}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$DeviceAdded;-><init>(I)V

    .line 45
    new-instance p1, Lkotlin/Pair;

    .line 48
    invoke-direct {p1, p0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    invoke-static {v0, v1, p1}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;->access$sendWithLogging(Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;Lkotlinx/coroutines/channels/ProducerScope;Ljava/lang/Object;)V

    .line 53
    return-void
    .line 56
.end method

.method public final onInputDeviceChanged(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1$listener$1;->$connectedDevices:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    check-cast v1, Ljava/util/Set;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 11
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 14
    move-result v3

    .line 17
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 18
    move-result v3

    .line 21
    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 22
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v1

    .line 28
    const/4 v3, 0x0

    .line 29
    move v4, v3

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v5

    .line 34
    if-eqz v5, :cond_2

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v5

    .line 40
    const/4 v6, 0x1

    .line 41
    if-nez v4, :cond_1

    .line 42
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result v7

    .line 47
    if-eqz v7, :cond_1

    .line 48
    move v4, v6

    .line 50
    move v6, v3

    .line 51
    :cond_1
    if-eqz v6, :cond_0

    .line 52
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_0

    .line 57
    :cond_2
    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1$listener$1;->this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1$listener$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 62
    iget-object p0, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1$listener$1;->$connectedDevices:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 64
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$DeviceRemoved;->INSTANCE:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$DeviceRemoved;

    .line 68
    new-instance v2, Lkotlin/Pair;

    .line 70
    invoke-direct {v2, p0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    invoke-static {p1, v0, v2}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;->access$sendWithLogging(Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;Lkotlinx/coroutines/channels/ProducerScope;Ljava/lang/Object;)V

    .line 75
    return-void
    .line 78
.end method
