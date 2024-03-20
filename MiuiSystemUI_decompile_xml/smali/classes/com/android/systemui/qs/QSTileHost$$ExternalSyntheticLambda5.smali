.class public final synthetic Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda5;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    .line 2
    iget p0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda5;->f$1:I

    .line 4
    check-cast p1, Ljava/util/List;

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    move-result v1

    .line 19
    const/4 v2, -0x1

    .line 20
    if-eq p0, v2, :cond_2

    .line 21
    if-lt p0, v1, :cond_1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    invoke-interface {p1, p0, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 26
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :goto_1
    const/4 p0, 0x1

    .line 33
    :goto_2
    return p0
    .line 34
.end method
