.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;


# instance fields
.field public clickIntentAction:Ljava/lang/String;

.field public headerText:Ljava/lang/Integer;

.field public nodeLabel:Ljava/lang/String;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->nodeLabel:Ljava/lang/String;

    .line 2
    const-class v1, Ljava/lang/String;

    .line 4
    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->headerText:Ljava/lang/Integer;

    .line 9
    const-class v2, Ljava/lang/Integer;

    .line 11
    invoke-static {v2, v0}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->clickIntentAction:Ljava/lang/String;

    .line 16
    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 18
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    .line 21
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 23
    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 25
    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->nodeLabel:Ljava/lang/String;

    .line 27
    iget-object v6, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->headerText:Ljava/lang/Integer;

    .line 29
    iget-object v7, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->clickIntentAction:Ljava/lang/String;

    .line 31
    move-object v2, v0

    .line 33
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 34
    return-object v0
    .line 37
.end method

.method public final clickIntentAction(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->clickIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method public final clickIntentAction(Ljava/lang/String;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->clickIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic headerText(I)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->headerText(I)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final headerText(I)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->headerText:Ljava/lang/Integer;

    return-object p0
.end method

.method public final nodeLabel(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->nodeLabel:Ljava/lang/String;

    return-object p0
.end method

.method public final nodeLabel(Ljava/lang/String;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->nodeLabel:Ljava/lang/String;

    return-object p0
.end method
