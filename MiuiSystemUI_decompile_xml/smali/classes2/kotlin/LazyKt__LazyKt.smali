.class public abstract Lkotlin/LazyKt__LazyKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 1

    .line 1
    new-instance v0, Lkotlin/SafePublicationLazyImpl;

    .line 2
    invoke-direct {v0, p0}, Lkotlin/SafePublicationLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 4
    return-object v0
    .line 7
.end method

.method public static final lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 1

    .line 1
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 2
    invoke-direct {v0, p0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 4
    return-object v0
    .line 7
.end method
