.class final Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$lastScreenWidthDp$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsPager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt;->rememberPageStateFixed(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/pager/PagerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/runtime/MutableState<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$lastScreenWidthDp$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$lastScreenWidthDp$2;

    invoke-direct {v0}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$lastScreenWidthDp$2;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$lastScreenWidthDp$2;->INSTANCE:Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$lastScreenWidthDp$2;

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
.method public final invoke()Landroidx/compose/runtime/MutableState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, -0x1

    .line 96
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$lastScreenWidthDp$2;->invoke()Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0
.end method
