.class public final Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;
.super Ljava/lang/Object;
.source "WindowAreaControllerImpl.kt"

# interfaces
.implements Landroidx/window/extensions/core/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/area/WindowAreaControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RearDisplaySessionConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/window/extensions/core/util/function/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowAreaControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowAreaControllerImpl.kt\nandroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,364:1\n1#2:365\n*E\n"
.end annotation


# instance fields
.field private final appCallback:Landroidx/window/area/WindowAreaSessionCallback;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final extensionsComponent:Landroidx/window/extensions/area/WindowAreaComponent;

.field private session:Landroidx/window/area/WindowAreaSession;


# direct methods
.method public static synthetic $r8$lambda$WjtW78xCkGS4No8I4mnvJzPELrA(Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;Landroidx/window/area/WindowAreaSession;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->onSessionStarted$lambda$1$lambda$0(Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;Landroidx/window/area/WindowAreaSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rrnTs6BAMOesxU5R5By26V_xWe0(Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->onSessionFinished$lambda$2(Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;Landroidx/window/extensions/area/WindowAreaComponent;)V
    .locals 1

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensionsComponent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->executor:Ljava/util/concurrent/Executor;

    .line 283
    iput-object p2, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->appCallback:Landroidx/window/area/WindowAreaSessionCallback;

    .line 284
    iput-object p3, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->extensionsComponent:Landroidx/window/extensions/area/WindowAreaComponent;

    return-void
.end method

.method private final onSessionFinished()V
    .locals 2

    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->session:Landroidx/window/area/WindowAreaSession;

    .line 309
    iget-object v0, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer$$ExternalSyntheticLambda1;-><init>(Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final onSessionFinished$lambda$2(Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iget-object p0, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->appCallback:Landroidx/window/area/WindowAreaSessionCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroidx/window/area/WindowAreaSessionCallback;->onSessionEnded(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final onSessionStarted()V
    .locals 3

    .line 303
    new-instance v0, Landroidx/window/area/RearDisplaySessionImpl;

    iget-object v1, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->extensionsComponent:Landroidx/window/extensions/area/WindowAreaComponent;

    invoke-direct {v0, v1}, Landroidx/window/area/RearDisplaySessionImpl;-><init>(Landroidx/window/extensions/area/WindowAreaComponent;)V

    iput-object v0, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->session:Landroidx/window/area/WindowAreaSession;

    .line 304
    iget-object v1, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer$$ExternalSyntheticLambda0;-><init>(Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;Landroidx/window/area/WindowAreaSession;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final onSessionStarted$lambda$1$lambda$0(Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;Landroidx/window/area/WindowAreaSession;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object p0, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->appCallback:Landroidx/window/area/WindowAreaSessionCallback;

    invoke-interface {p0, p1}, Landroidx/window/area/WindowAreaSessionCallback;->onSessionStarted(Landroidx/window/area/WindowAreaSession;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 294
    sget-object v0, Landroidx/window/core/BuildConfig;->INSTANCE:Landroidx/window/core/BuildConfig;

    invoke-virtual {v0}, Landroidx/window/core/BuildConfig;->getVerificationMode()Landroidx/window/core/VerificationMode;

    move-result-object v0

    sget-object v1, Landroidx/window/core/VerificationMode;->STRICT:Landroidx/window/core/VerificationMode;

    if-ne v0, v1, :cond_0

    .line 295
    invoke-static {}, Landroidx/window/area/WindowAreaControllerImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received an unknown session status value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    invoke-direct {p0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->onSessionFinished()V

    goto :goto_0

    .line 291
    :cond_1
    invoke-direct {p0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->onSessionStarted()V

    goto :goto_0

    .line 292
    :cond_2
    invoke-direct {p0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->onSessionFinished()V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 281
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->accept(I)V

    return-void
.end method
