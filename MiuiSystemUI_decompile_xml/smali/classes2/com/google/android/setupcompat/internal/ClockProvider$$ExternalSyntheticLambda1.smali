.class public final synthetic Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/android/setupcompat/internal/Ticker;


# instance fields
.field public final synthetic f$0:Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final read()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;

    .line 2
    invoke-interface {p0}, Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Long;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 10
    move-result-wide v0

    .line 13
    return-wide v0
    .line 14
.end method
