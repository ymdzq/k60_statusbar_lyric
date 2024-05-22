.class public final synthetic Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda3;->f$0:I

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$$ExternalSyntheticLambda3;->f$0:I

    .line 2
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 4
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->getCallbackType()I

    .line 6
    move-result p1

    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method
