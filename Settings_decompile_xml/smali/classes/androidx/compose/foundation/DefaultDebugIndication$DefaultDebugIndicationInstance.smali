.class final Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;
.super Ljava/lang/Object;
.source "Indication.kt"

# interfaces
.implements Landroidx/compose/foundation/IndicationInstance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/DefaultDebugIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultDebugIndicationInstance"
.end annotation


# instance fields
.field private final isFocused:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isHovered:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isPressed:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "isPressed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isHovered"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isFocused"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isPressed:Landroidx/compose/runtime/State;

    .line 153
    iput-object p2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isHovered:Landroidx/compose/runtime/State;

    .line 154
    iput-object p3, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isFocused:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public drawIndication(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 15

    move-object v0, p0

    const-string v1, "<this>"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    .line 158
    iget-object v1, v0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isPressed:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v3

    const v5, 0x3e99999a    # 0.3f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x7a

    const/4 v14, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v1, v0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isHovered:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isFocused:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    :cond_1
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v3

    const v5, 0x3dcccccd    # 0.1f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x7a

    const/4 v14, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
