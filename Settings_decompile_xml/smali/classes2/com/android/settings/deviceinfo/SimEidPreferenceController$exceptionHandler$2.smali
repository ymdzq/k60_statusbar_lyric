.class final Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SimEidPreferenceController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/SimEidPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimEidPreferenceController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimEidPreferenceController.kt\ncom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,178:1\n49#2,4:179\n*S KotlinDebug\n*F\n+ 1 SimEidPreferenceController.kt\ncom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2\n*L\n45#1:179,4\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2;->INSTANCE:Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2;->invoke()Lkotlinx/coroutines/CoroutineExceptionHandler;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lkotlinx/coroutines/CoroutineExceptionHandler;
    .locals 1

    .line 49
    sget-object p0, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2$invoke$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2$invoke$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;)V

    return-object v0
.end method
