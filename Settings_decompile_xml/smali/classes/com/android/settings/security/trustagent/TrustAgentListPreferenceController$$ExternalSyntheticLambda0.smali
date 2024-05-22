.class public final synthetic Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    invoke-static {p1}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->$r8$lambda$wGhCWSgICI7Z-7tctyL7ebgQ868(Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;)Z

    move-result p0

    return p0
.end method
