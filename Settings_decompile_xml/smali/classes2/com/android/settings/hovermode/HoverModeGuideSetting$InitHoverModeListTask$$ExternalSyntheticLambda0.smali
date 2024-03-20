.class public final synthetic Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask$$ExternalSyntheticLambda0;->f$0:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask$$ExternalSyntheticLambda0;->f$0:Ljava/util/Comparator;

    check-cast p1, Lcom/android/settings/hovermode/HoverModeAppItemInfo;

    check-cast p2, Lcom/android/settings/hovermode/HoverModeAppItemInfo;

    invoke-static {p0, p1, p2}, Lcom/android/settings/hovermode/HoverModeGuideSetting$InitHoverModeListTask;->$r8$lambda$_WtMdhyipXQ1EbZd4NF2s9HTsiM(Ljava/util/Comparator;Lcom/android/settings/hovermode/HoverModeAppItemInfo;Lcom/android/settings/hovermode/HoverModeAppItemInfo;)I

    move-result p0

    return p0
.end method
