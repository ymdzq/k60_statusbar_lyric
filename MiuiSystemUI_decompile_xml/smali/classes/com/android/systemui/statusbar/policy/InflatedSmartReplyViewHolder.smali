.class public final Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final smartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field public final smartSuggestionButtons:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;->smartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;->smartSuggestionButtons:Ljava/util/List;

    .line 7
    return-void
    .line 9
.end method
