.class public final Lkotlin/random/Random$Default;
.super Lkotlin/random/Random;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lkotlin/random/Random;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/random/Random$Default;-><init>()V

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/random/Random$Default$Serialized;->INSTANCE:Lkotlin/random/Random$Default$Serialized;

    .line 2
    return-object p0
    .line 4
.end method


# virtual methods
.method public final nextInt()I
    .locals 0

    .line 1
    sget-object p0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/Random;

    .line 2
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
