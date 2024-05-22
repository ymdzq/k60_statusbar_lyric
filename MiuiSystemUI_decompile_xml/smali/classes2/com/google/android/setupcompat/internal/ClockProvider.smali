.class public abstract Lcom/google/android/setupcompat/internal/ClockProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final SYSTEM_TICKER:Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda0;

.field public static ticker:Lcom/google/android/setupcompat/internal/Ticker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda0;

    .line 2
    invoke-direct {v0}, Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda0;-><init>()V

    .line 4
    sput-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->SYSTEM_TICKER:Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda0;

    .line 7
    sput-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->ticker:Lcom/google/android/setupcompat/internal/Ticker;

    .line 9
    return-void
    .line 11
.end method

.method public static resetInstance()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->SYSTEM_TICKER:Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda0;

    .line 2
    sput-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->ticker:Lcom/google/android/setupcompat/internal/Ticker;

    .line 4
    return-void
    .line 6
.end method

.method public static setInstance(Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda1;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;)V

    .line 4
    sput-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->ticker:Lcom/google/android/setupcompat/internal/Ticker;

    .line 7
    return-void
    .line 9
.end method
