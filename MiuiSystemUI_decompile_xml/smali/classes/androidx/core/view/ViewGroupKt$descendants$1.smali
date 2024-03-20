.class final Landroidx/core/view/ViewGroupKt$descendants$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.core.view.ViewGroupKt$descendants$1"
    f = "ViewGroup.kt"
    l = {
        0x77,
        0x79
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $this_descendants:Landroid/view/ViewGroup;

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    .line 2
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/view/ViewGroupKt$descendants$1;

    .line 2
    iget-object p0, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    .line 4
    invoke-direct {v0, p0, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;-><init>(Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V

    .line 6
    iput-object p1, v0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 9
    return-object v0
    .line 11
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/core/view/ViewGroupKt$descendants$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Landroidx/core/view/ViewGroupKt$descendants$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    if-eq v1, v4, :cond_1

    .line 12
    if-ne v1, v3, :cond_0

    .line 14
    iget v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    .line 16
    iget v5, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .line 18
    iget-object v6, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    .line 20
    check-cast v6, Landroid/view/ViewGroup;

    .line 22
    iget-object v7, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 24
    check-cast v7, Lkotlin/sequences/SequenceBuilderIterator;

    .line 26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    move-object v8, v0

    .line 31
    move-object v9, v8

    .line 32
    goto/16 :goto_4

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 35
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p0

    .line 42
    :cond_1
    iget v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    .line 43
    iget v5, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .line 45
    iget-object v6, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    .line 47
    check-cast v6, Landroid/view/View;

    .line 49
    iget-object v7, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    .line 51
    check-cast v7, Landroid/view/ViewGroup;

    .line 53
    iget-object v8, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 55
    check-cast v8, Lkotlin/sequences/SequenceBuilderIterator;

    .line 57
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    move-object v9, v0

    .line 62
    move-object p1, v8

    .line 63
    move-object v8, v9

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    iget-object p1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 69
    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 71
    iget-object v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    .line 73
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 75
    move-result v5

    .line 78
    const/4 v6, 0x0

    .line 79
    move-object v7, v0

    .line 80
    move-object v8, v7

    .line 81
    :goto_0
    if-ge v6, v5, :cond_8

    .line 82
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 84
    move-result-object v9

    .line 87
    iput-object p1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 88
    iput-object v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    .line 90
    iput-object v9, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    .line 92
    iput v6, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .line 94
    iput v5, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    .line 96
    iput v4, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    .line 98
    invoke-virtual {p1, v9, p0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 100
    if-ne v7, v8, :cond_3

    .line 103
    return-object v8

    .line 105
    :cond_3
    move-object v12, v7

    .line 106
    move-object v7, v1

    .line 107
    move v1, v5

    .line 108
    move v5, v6

    .line 109
    move-object v6, v9

    .line 110
    move-object v9, v8

    .line 111
    move-object v8, v12

    .line 112
    :goto_1
    instance-of v10, v6, Landroid/view/ViewGroup;

    .line 113
    if-eqz v10, :cond_7

    .line 115
    check-cast v6, Landroid/view/ViewGroup;

    .line 117
    new-instance v10, Landroidx/core/view/ViewGroupKt$descendants$1;

    .line 119
    const/4 v11, 0x0

    .line 121
    invoke-direct {v10, v6, v11}, Landroidx/core/view/ViewGroupKt$descendants$1;-><init>(Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V

    .line 122
    iput-object p1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    .line 125
    iput-object v7, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    .line 127
    iput-object v11, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    .line 129
    iput v5, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .line 131
    iput v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    .line 133
    iput v3, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    new-instance v6, Lkotlin/sequences/SequenceBuilderIterator;

    .line 140
    invoke-direct {v6}, Lkotlin/sequences/SequenceBuilderIterator;-><init>()V

    .line 142
    invoke-static {v6, v6, v10}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->createCoroutineUnintercepted(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function2;)Lkotlin/coroutines/Continuation;

    .line 145
    move-result-object v10

    .line 148
    iput-object v10, v6, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    .line 149
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    move-result v10

    .line 154
    if-nez v10, :cond_4

    .line 155
    move-object v6, v2

    .line 157
    goto :goto_2

    .line 158
    :cond_4
    iput-object v6, p1, Lkotlin/sequences/SequenceBuilderIterator;->nextIterator:Ljava/util/Iterator;

    .line 159
    iput v3, p1, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    .line 161
    iput-object p0, p1, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    .line 163
    move-object v6, v0

    .line 165
    :goto_2
    if-ne v6, v0, :cond_5

    .line 166
    goto :goto_3

    .line 168
    :cond_5
    move-object v6, v2

    .line 169
    :goto_3
    if-ne v6, v9, :cond_6

    .line 170
    return-object v9

    .line 172
    :cond_6
    move-object v6, v7

    .line 173
    move-object v7, p1

    .line 174
    :goto_4
    move-object p1, v7

    .line 175
    move-object v7, v8

    .line 176
    move-object v8, v9

    .line 177
    move-object v12, v6

    .line 178
    move v6, v1

    .line 179
    move-object v1, v12

    .line 180
    goto :goto_5

    .line 181
    :cond_7
    move v6, v1

    .line 182
    move-object v1, v7

    .line 183
    move-object v7, v8

    .line 184
    move-object v8, v9

    .line 185
    :goto_5
    add-int/2addr v5, v4

    .line 186
    move v12, v6

    .line 187
    move v6, v5

    .line 188
    move v5, v12

    .line 189
    goto :goto_0

    .line 190
    :cond_8
    return-object v2
    .line 191
.end method
