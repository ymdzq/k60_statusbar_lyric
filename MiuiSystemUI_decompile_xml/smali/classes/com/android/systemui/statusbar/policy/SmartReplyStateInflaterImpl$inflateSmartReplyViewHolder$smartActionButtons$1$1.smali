.class final Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$1;->INSTANCE:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartActionButtons$1$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/app/Notification$Action;

    .line 2
    iget-object p0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method